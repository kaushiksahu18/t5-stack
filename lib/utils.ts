import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export const getColor = (theme: string | undefined) => {
  let lightness;
  if (theme === "dark") {
    lightness = Math.random() * 20 + 5;
  } else {
    lightness = Math.random() * 20 + 75;
  }
  return `hsl(${Math.random() * 360}, 100%, ${lightness}%)`;
};

export const getSystemTheme = () => {
  const isDarkTheme = window.matchMedia("(prefers-color-scheme: dark)").matches;
  if (isDarkTheme) {
    return "dark";
  } else {
    return "light";
  }
};
