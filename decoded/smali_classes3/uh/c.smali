.class public Luh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lsh/e;

.field private final e:Lsh/d;

.field private final f:Lsh/h;

.field private final g:Lwh/c;

.field private final h:Ljava/lang/Object;

.field private final i:Z

.field private final j:Landroid/graphics/BitmapFactory$Options;

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh/e;Lsh/h;Lwh/c;Lrh/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/c;->a:Ljava/lang/String;

    iput-object p2, p0, Luh/c;->b:Ljava/lang/String;

    iput-object p3, p0, Luh/c;->c:Ljava/lang/String;

    iput-object p4, p0, Luh/c;->d:Lsh/e;

    invoke-virtual {p7}, Lrh/c;->D()Lsh/d;

    move-result-object p1

    iput-object p1, p0, Luh/c;->e:Lsh/d;

    iput-object p5, p0, Luh/c;->f:Lsh/h;

    iput-object p6, p0, Luh/c;->g:Lwh/c;

    invoke-virtual {p7}, Lrh/c;->y()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Luh/c;->h:Ljava/lang/Object;

    invoke-virtual {p7}, Lrh/c;->I()Z

    move-result p1

    iput-boolean p1, p0, Luh/c;->i:Z

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Luh/c;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p7}, Lrh/c;->J()Z

    move-result p2

    iput-boolean p2, p0, Luh/c;->k:Z

    invoke-virtual {p7}, Lrh/c;->v()Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Luh/c;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-direct {p0, p1, p2}, Luh/c;->b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    invoke-direct {p0, p1, p2}, Luh/c;->c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public d()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Luh/c;->j:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public e()Lwh/c;
    .locals 1

    iget-object v0, p0, Luh/c;->g:Lwh/c;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luh/c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luh/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lsh/d;
    .locals 1

    iget-object v0, p0, Luh/c;->e:Lsh/d;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luh/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lsh/e;
    .locals 1

    iget-object v0, p0, Luh/c;->d:Lsh/e;

    return-object v0
.end method

.method public k()Lsh/h;
    .locals 1

    iget-object v0, p0, Luh/c;->f:Lsh/h;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Luh/c;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Luh/c;->i:Z

    return v0
.end method
