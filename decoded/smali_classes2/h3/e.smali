.class public Lh3/e;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e008a

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh3/f;->i(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mimarket://home?ref=anquanzhongxin_guanli&pageRef=anquanzhongxin_guanli"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "app_tab_bottom_appstore"

    invoke-static {p1}, Lf3/a;->d(Ljava/lang/String;)V

    return-void
.end method
