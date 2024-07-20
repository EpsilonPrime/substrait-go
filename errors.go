// SPDX-License-Identifier: Apache-2.0

package substraitgo

import "errors"

var (
	ErrNotImplemented    = errors.New("not implemented")
	ErrInvalidType       = errors.New("invalid type")
	ErrInvalidExpr       = errors.New("invalid expression")
	ErrNotFound          = errors.New("not found")
	ErrKeyExists         = errors.New("key already exists")
	ErrInvalidRel        = errors.New("invalid relation")
	ErrInvalidArg        = errors.New("invalid argument")
	ErrInvalidInputCount = errors.New("invalid input count")
)
