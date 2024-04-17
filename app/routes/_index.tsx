import type { MetaFunction } from "@remix-run/node";
import invariant from "tiny-invariant";
import { json } from "@remix-run/node";
import { useLoaderData } from "@remix-run/react";

const postContentsBySlug = Object.fromEntries(
  Object.entries(
    import.meta.glob("../../data/*.md", {
      query: "?raw",
      import: "default",
      eager: true,
    })
  ).map(([filePath, contents]) => {
    console.log(filePath);
    invariant(
      typeof contents === "string",
      `Expected ${filePath} to be a string, but got ${typeof contents}`
    );
    return [filePath.replace("../../data/", "").replace(/\.md$/, ""), contents];
  })
);

export const loader = async () => {
  const content = postContentsBySlug;
  console.log(content);
  return json(content);
};

export const meta: MetaFunction = () => {
  return [
    { title: "Kids" },
    {
      name: "description",
      content: "Tools for publishing Markdown content to the web using Remix.",
    },
  ];
};

export default function Index() {
  const posts = useLoaderData<typeof loader>();

  return (
    <div style={{ fontFamily: "system-ui, sans-serif", lineHeight: "1.8" }}>
      <h1>Welcome to Kids</h1>
      <pre>{JSON.stringify(posts, null, 2)}</pre>
    </div>
  );
}
