.class Lc3/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/e;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lc3/e$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lc3/e$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc3/f;->F()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lc3/f;->F()I

    move-result v0

    iget-object v1, p0, Lc3/e$c;->a:Landroid/content/Context;

    const v2, 0x7f120060

    const v3, 0x7f12005f

    const-string v4, "000011"

    invoke-static {v1, v4}, Lc3/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x67

    const/4 v6, 0x4

    iget-object v7, p0, Lc3/e$c;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080938

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lc3/f;->a0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    const-string v1, "pre_guide_notification"

    invoke-static {v1}, La3/a;->r(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc3/f;->r0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc3/e$c;->a:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v2, "recommend_app_installed"

    invoke-static {v0, v1, v2}, Lc3/e;->f(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
