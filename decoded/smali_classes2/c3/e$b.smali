.class Lc3/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/e;->n(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/e$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lc3/e$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lc3/e$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lc3/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lc3/f;->D()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, v0, Lc3/e$b;->b:Ljava/lang/String;

    const-string v3, "000012"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f080938

    if-eqz v1, :cond_0

    iget-object v4, v0, Lc3/e$b;->a:Landroid/content/Context;

    const v5, 0x7f12005c

    const v6, 0x7f12005b

    iget-object v1, v0, Lc3/e$b;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lc3/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x68

    const/4 v9, 0x3

    iget-object v1, v0, Lc3/e$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static/range {v4 .. v12}, Lc3/f;->b0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v13, v0, Lc3/e$b;->a:Landroid/content/Context;

    const v14, 0x7f12005e

    const v15, 0x7f12005d

    iget-object v1, v0, Lc3/e$b;->b:Ljava/lang/String;

    invoke-static {v13, v1}, Lc3/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x68

    const/16 v18, 0x3

    iget-object v1, v0, Lc3/e$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-static/range {v13 .. v21}, Lc3/f;->b0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;ZZ)V

    const/16 v1, 0x68

    const-string v3, "com.miui.securitycenter_com.miui.applicationlock_104"

    const-string v4, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-static {v3, v4, v1}, Lc3/f;->Z(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const-string v1, "post_guide_notification"

    invoke-static {v1}, La3/a;->r(Ljava/lang/String;)V

    invoke-static {v2}, Lc3/f;->q0(I)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lc3/e$b;->a:Landroid/content/Context;

    const/4 v2, 0x3

    const-string v3, "competitive_app_installed"

    invoke-static {v1, v2, v3}, Lc3/e;->f(Landroid/content/Context;ILjava/lang/String;)V

    :goto_1
    return-void
.end method
