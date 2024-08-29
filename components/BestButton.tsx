"use client";

import { Button } from "@/components/ui/button";
import { useTheme } from "next-themes";
import { getColor } from "@/lib/utils";

export function BestButton({
  children = "Button",
}: {
  children?: React.ReactNode;
}) {
  const { theme } = useTheme();
  return (
    <Button
      onClick={() => (document.body.style.backgroundColor = getColor(theme))}
    >
      {children}
    </Button>
  );
}
