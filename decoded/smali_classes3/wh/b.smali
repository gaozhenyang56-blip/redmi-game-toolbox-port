.class public Lwh/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lwh/b;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lwh/b;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public read()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported , use getBitmap()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
