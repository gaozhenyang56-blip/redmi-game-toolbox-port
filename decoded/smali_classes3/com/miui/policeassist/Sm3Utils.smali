.class public Lcom/miui/policeassist/Sm3Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sm3([B)[B
    .locals 3

    new-instance v0, Lcom/miui/policeassist/sm3/SM3Digest;

    invoke-direct {v0}, Lcom/miui/policeassist/sm3/SM3Digest;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/miui/policeassist/sm3/GeneralDigest;->update([BII)V

    invoke-virtual {v0}, Lcom/miui/policeassist/sm3/SM3Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0, v2}, Lcom/miui/policeassist/sm3/SM3Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static sm3Hex([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/policeassist/Sm3Utils;->sm3([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/policeassist/sm3/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
