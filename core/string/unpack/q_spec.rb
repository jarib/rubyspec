require File.expand_path('../../../../spec_helper', __FILE__)
require File.expand_path('../../fixtures/classes', __FILE__)
require File.expand_path('../shared/basic', __FILE__)
require File.expand_path('../shared/integer', __FILE__)

ruby_version_is "1.9.3" do
  describe "String#unpack with format 'Q<'" do
    it_behaves_like :string_unpack_64bit_le, 'Q<'
    it_behaves_like :string_unpack_64bit_le_unsigned, 'Q<'
  end

  describe "String#unpack with format 'q<'" do
    it_behaves_like :string_unpack_64bit_le, 'q<'
    it_behaves_like :string_unpack_64bit_le_signed, 'q<'
  end

  describe "String#unpack with format 'Q>'" do
    it_behaves_like :string_unpack_64bit_be, 'Q>'
    it_behaves_like :string_unpack_64bit_be_unsigned, 'Q>'
  end

  describe "String#unpack with format 'q>'" do
    it_behaves_like :string_unpack_64bit_be, 'q>'
    it_behaves_like :string_unpack_64bit_be_signed, 'q>'
  end
end

describe "String#unpack with format 'Q'" do
  it_behaves_like :string_unpack_basic, 'Q'
  it_behaves_like :string_unpack_no_platform, 'Q'
end

describe "String#unpack with format 'q'" do
  it_behaves_like :string_unpack_basic, 'q'
  it_behaves_like :string_unpack_no_platform, 'q'
end

little_endian do
  describe "String#unpack with format 'Q'" do
    it_behaves_like :string_unpack_64bit_le, 'Q'
    it_behaves_like :string_unpack_64bit_le_extra, 'Q'
    it_behaves_like :string_unpack_64bit_le_unsigned, 'Q'
  end

  describe "String#unpack with format 'q'" do
    it_behaves_like :string_unpack_64bit_le, 'q'
    it_behaves_like :string_unpack_64bit_le_extra, 'q'
    it_behaves_like :string_unpack_64bit_le_signed, 'q'
  end
end

big_endian do
  describe "String#unpack with format 'Q'" do
    it_behaves_like :string_unpack_64bit_be, 'Q'
    it_behaves_like :string_unpack_64bit_be_extra, 'Q'
    it_behaves_like :string_unpack_64bit_be_unsigned, 'Q'
  end

  describe "String#unpack with format 'q'" do
    it_behaves_like :string_unpack_64bit_be, 'q'
    it_behaves_like :string_unpack_64bit_be_extra, 'q'
    it_behaves_like :string_unpack_64bit_be_signed, 'q'
  end
end
