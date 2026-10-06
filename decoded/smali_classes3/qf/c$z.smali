.class Lqf/c$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "z"
.end annotation


# instance fields
.field private a:Lcom/miui/common/card/GridFunctionData;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/common/card/GridFunctionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqf/c$z;->b:Landroid/content/Context;

    iput-object p2, p0, Lqf/c$z;->a:Lcom/miui/common/card/GridFunctionData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqf/c$z;->a:Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lqf/c$z;->a:Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "module_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slide_down_action_f_rebuild"

    invoke-static {v0, v1}, Lqf/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lqf/c$z;->a:Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqf/c$z;->b:Landroid/content/Context;

    invoke-static {v0}, Lqf/c;->h(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
