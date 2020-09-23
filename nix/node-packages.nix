# This file has been generated by node2nix 1.8.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "core-js-3.6.5" = {
      name = "core-js";
      packageName = "core-js";
      version = "3.6.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-js/-/core-js-3.6.5.tgz";
        sha512 = "vZVEEwZoIsI+vPEuoF9Iqf5H7/M3eeQqWlQnYa8FSKKePuYTf5MWnxb5SDAzCa60b3JBRS5g9b+Dq7b1y/RCrA==";
      };
    };
    "vue-2.6.12" = {
      name = "vue";
      packageName = "vue";
      version = "2.6.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue/-/vue-2.6.12.tgz";
        sha512 = "uhmLFETqPPNyuLLbsKz6ioJ4q7AZHzD8ZVFNATNyICSZouqP2Sz0rotWQC8UNBF6VGSCs5abnKJoStA6JbCbfg==";
      };
    };
    "vue-class-component-7.2.6" = {
      name = "vue-class-component";
      packageName = "vue-class-component";
      version = "7.2.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-class-component/-/vue-class-component-7.2.6.tgz";
        sha512 = "+eaQXVrAm/LldalI272PpDe3+i4mPis0ORiMYxF6Ae4hyuCh15W8Idet7wPUEs4N4YptgFHGys4UrgNQOMyO6w==";
      };
    };
    "vue-property-decorator-8.5.1" = {
      name = "vue-property-decorator";
      packageName = "vue-property-decorator";
      version = "8.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-property-decorator/-/vue-property-decorator-8.5.1.tgz";
        sha512 = "O6OUN2OMsYTGPvgFtXeBU3jPnX5ffQ9V4I1WfxFQ6dqz6cOUbR3Usou7kgFpfiXDvV7dJQSFcJ5yUPgOtPPm1Q==";
      };
    };
    "vue-router-3.4.3" = {
      name = "vue-router";
      packageName = "vue-router";
      version = "3.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-router/-/vue-router-3.4.3.tgz";
        sha512 = "BADg1mjGWX18Dpmy6bOGzGNnk7B/ZA0RxuA6qedY/YJwirMfKXIDzcccmHbQI0A6k5PzMdMloc0ElHfyOoX35A==";
      };
    };
    "vuex-3.5.1" = {
      name = "vuex";
      packageName = "vuex";
      version = "3.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vuex/-/vuex-3.5.1.tgz";
        sha512 = "w7oJzmHQs0FM9LXodfskhw9wgKBiaB+totOdb8sNzbTB2KDCEEwEs29NzBZFh/lmEK1t5tDmM1vtsO7ubG1DFw==";
      };
    };
  };
  args = {
    name = "zacc";
    packageName = "zacc";
    version = "0.1.0";
    src = ./..;
    dependencies = [
      sources."core-js-3.6.5"
      sources."vue-2.6.12"
      sources."vue-class-component-7.2.6"
      sources."vue-property-decorator-8.5.1"
      sources."vue-router-3.4.3"
      sources."vuex-3.5.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}