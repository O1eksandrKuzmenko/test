const { bumpPatch } = require("../lib/bumpPatch");

describe("bumpPatch", () => {
  it("increments patch segment", () => {
    expect(bumpPatch("1.0.0")).toBe("1.0.1");
    expect(bumpPatch("2.3.9")).toBe("2.3.10");
  });

  it("rejects invalid version", () => {
    expect(() => bumpPatch("1.0")).toThrow("Invalid version");
  });
});
