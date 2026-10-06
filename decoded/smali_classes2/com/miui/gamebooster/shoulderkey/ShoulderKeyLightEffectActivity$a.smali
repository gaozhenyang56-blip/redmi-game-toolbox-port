.class Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->i0(Lq7/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq7/a;

.field final synthetic b:Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;Lq7/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->b:Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->a:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p1}, Lp7/d;->h()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->b:Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->b:Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->h0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;)V

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp7/d;->l(Ljava/lang/String;)V

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;->b:Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lp7/b;->n(ILjava/lang/String;)V

    return-void
.end method
