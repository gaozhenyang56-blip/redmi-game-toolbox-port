.class public final synthetic Lx8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzh/a;


# instance fields
.field public final synthetic a:Lx8/c;


# direct methods
.method public synthetic constructor <init>(Lx8/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/b;->a:Lx8/c;

    return-void
.end method


# virtual methods
.method public final process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lx8/b;->a:Lx8/c;

    invoke-static {v0, p1}, Lx8/c;->f(Lx8/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
