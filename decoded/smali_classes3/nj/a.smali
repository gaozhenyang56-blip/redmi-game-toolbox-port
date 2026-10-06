.class public Lnj/a;
.super Lnj/d;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "Common"

    const-string v1, "100+5"

    const-string v2, "106Short"

    const-string v3, "106Common"

    const-string v4, "106Long"

    const-string v5, "9Pre5"

    const-string v6, "Other"

    const-string v7, "Null"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lnj/a;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static c(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 7

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x5

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x2

    if-ne v4, v5, :cond_2

    const/16 v4, 0x33

    if-eq v2, v4, :cond_1

    const/16 v4, 0x35

    if-eq v2, v4, :cond_1

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    const/16 v4, 0x34

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 v0, 0x30

    if-ne v2, v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_4

    return v6

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v3, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x6

    return p0

    :cond_8
    :goto_0
    const/4 p0, 0x7

    return p0
.end method
