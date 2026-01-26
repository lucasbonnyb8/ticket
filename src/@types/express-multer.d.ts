import type { Multer } from "multer";

declare global {
  namespace Express {
    namespace Multer {
      type File = Multer.File;
    }
  }
}

export {};
