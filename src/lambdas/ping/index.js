/**
 * Returns "success" upon successful request.
 */
const { SuccessResponse } = require("../../util/responses");
exports.handler = async () => {
    return SuccessResponse;
};
