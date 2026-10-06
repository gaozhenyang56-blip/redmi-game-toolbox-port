.class public Lu1/a;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/a$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/UUID;

.field private static f:I

.field private static g:I


# instance fields
.field private a:Z

.field private b:I

.field private c:Lu1/a$a;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lu1/a;->e:Ljava/util/UUID;

    const/4 v0, 0x0

    sput v0, Lu1/a;->f:I

    sput v0, Lu1/a;->g:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    sget-object v0, Lu1/a;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Lu1/a;->e:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu1/a;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lu1/a;->c:Lu1/a$a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/a;->d:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p1, "DolbyAudioEffect"

    const-string v0, "Creating a DolbyAudioEffect to global output mix!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p2, p0, Lu1/a;->b:I

    sget p1, Lu1/a;->f:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lu1/a;->g()I

    move-result p1

    sput p1, Lu1/a;->f:I

    :cond_1
    sget p1, Lu1/a;->g:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lu1/a;->f()I

    move-result p1

    sput p1, Lu1/a;->g:I

    :cond_2
    return-void
.end method

.method private static a([B)I
    .locals 2

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private b(I)V
    .locals 1

    if-gez p1, :cond_2

    const/4 v0, -0x5

    if-eq p1, v0, :cond_1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "DolbyAudioEffect: set/get parameter error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DolbyAudioEffect: bad parameter value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DolbyAudioEffect: invalid parameter operation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private static i([I[BI)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, v0, 0x2

    return p0
.end method

.method private static j(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method protected c(I)Z
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lu1/a;->j(I[BI)I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, v0}, Lu1/a;->getParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    invoke-static {v0}, Lu1/a;->a([B)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu1/a;->c(I)Z

    move-result v0

    return v0
.end method

.method protected e(I)I
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lu1/a;->j(I[BI)I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, v0}, Lu1/a;->getParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    invoke-static {v0}, Lu1/a;->a([B)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Lu1/a;->e(I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const/high16 v0, 0x3000000

    invoke-virtual {p0, v0}, Lu1/a;->e(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    const/high16 v0, 0xa000000

    invoke-virtual {p0, v0}, Lu1/a;->e(I)I

    move-result v0

    return v0
.end method

.method public hasControl()Z
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyAudioEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/high16 v0, 0xd000000

    invoke-virtual {p0, v0}, Lu1/a;->c(I)Z

    move-result v0

    return v0
.end method

.method protected l(IZ)I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr p1, v1

    const/4 v2, 0x1

    invoke-static {v2, v0, p1}, Lu1/a;->j(I[BI)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p2, v0, p1}, Lu1/a;->j(I[BI)I

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lu1/a;->setParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    return v1
.end method

.method public m(III[I)V
    .locals 4

    const-string v0, "DolbyAudioEffect"

    if-ltz p1, :cond_3

    sget v1, Lu1/a;->f:I

    if-ge p1, v1, :cond_3

    sget-object v1, Lu1/c;->b:Lu1/c;

    invoke-virtual {v1}, Lu1/c;->a()I

    move-result v1

    if-lt p2, v1, :cond_2

    sget-object v1, Lu1/c;->g:Lu1/c;

    invoke-virtual {v1}, Lu1/c;->a()I

    move-result v1

    if-gt p2, v1, :cond_2

    invoke-virtual {p0}, Lu1/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lu1/b;->c:Lu1/b;

    invoke-virtual {v0}, Lu1/b;->a()I

    move-result v0

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    array-length v0, p4

    add-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v3, v1, v2}, Lu1/a;->j(I[BI)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1, v3}, Lu1/a;->j(I[BI)I

    move-result v0

    add-int/2addr v3, v0

    invoke-static {p1, v1, v3}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {p2, v1, v3}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {p3, v1, v3}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {p4, v1, v3}, Lu1/a;->i([I[BI)I

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lu1/a;->setParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR in setProfileParameter(): Invalid port"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR in setProfileParameter(): Invalid profile index"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public n(II[I)V
    .locals 4

    if-ltz p1, :cond_2

    sget v0, Lu1/a;->f:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lu1/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lu1/b;->c:Lu1/b;

    invoke-virtual {v0}, Lu1/b;->a()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    array-length v0, p3

    add-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/high16 v3, 0x1000000

    invoke-static {v3, v1, v2}, Lu1/a;->j(I[BI)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1, v3}, Lu1/a;->j(I[BI)I

    move-result v0

    add-int/2addr v3, v0

    invoke-static {p1, v1, v3}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {p2, v1, v3}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {p3, v1, v3}, Lu1/a;->i([I[BI)I

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lu1/a;->setParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR in setProfileParameter(): Invalid profile index"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolbyAudioEffect"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public o(II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object p2, Lu1/b;->i:Lu1/b;

    invoke-virtual {p2}, Lu1/b;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lu1/a;->n(II[I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR in setDialogEnhancerAmount(): Invalid amount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolbyAudioEffect"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public p(IZ)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object p2, Lu1/b;->f:Lu1/b;

    invoke-virtual {p2}, Lu1/b;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lu1/a;->n(II[I)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lu1/a;->l(IZ)I

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    return-void
.end method

.method public r(IZ)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object p2, Lu1/b;->b:Lu1/b;

    invoke-virtual {p2}, Lu1/b;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lu1/a;->n(II[I)V

    return-void
.end method

.method protected s(II)I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lu1/a;->j(I[BI)I

    move-result p1

    add-int/2addr p1, v1

    const/4 v2, 0x1

    invoke-static {v2, v0, p1}, Lu1/a;->j(I[BI)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p2, v0, p1}, Lu1/a;->j(I[BI)I

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lu1/a;->setParameter(I[B)I

    move-result p1

    invoke-direct {p0, p1}, Lu1/a;->b(I)V

    return v1
.end method

.method public t(I)V
    .locals 2

    if-ltz p1, :cond_0

    sget v0, Lu1/a;->f:I

    if-ge p1, v0, :cond_0

    const/high16 v0, 0xa000000

    invoke-virtual {p0, v0, p1}, Lu1/a;->s(II)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR in setProfile(): Invalid profile index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DolbyAudioEffect"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public u(III)V
    .locals 2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/16 v0, 0x40

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object p2, Lu1/b;->n:Lu1/b;

    invoke-virtual {p2}, Lu1/b;->a()I

    move-result p2

    invoke-virtual {p0, p1, p3, p2, v0}, Lu1/a;->m(III[I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR in setStereoWideningAmount(): Invalid stereo widening amount"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolbyAudioEffect"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
