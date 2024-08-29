// export { default } from "next-auth/middleware";


// export const config = { matcher: ["/","/chat/:path*","/profile/:path*"] };


// remove this and create your own
// it do nothing
import { NextRequest, NextResponse } from "next/server";
export function middleware(request: NextRequest) {
  return NextResponse.next();
}
