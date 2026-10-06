.class Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->i(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-static {v1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
