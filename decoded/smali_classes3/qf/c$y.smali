.class Lqf/c$y;
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
    name = "y"
.end annotation


# instance fields
.field private a:Lcom/miui/common/card/models/BaseCardModel;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqf/c$y;->b:Landroid/content/Context;

    iput-object p2, p0, Lqf/c$y;->a:Lcom/miui/common/card/models/BaseCardModel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lqf/c$y;->a:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lqf/c;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/common/card/models/NewsCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqf/c;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/miui/common/card/models/ActivityCardModel;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/common/card/models/ActivityCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqf/c;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/common/card/models/FunctionCardModel;

    iget-object v1, p0, Lqf/c$y;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lqf/c;->l(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V

    :cond_4
    :goto_1
    return-void
.end method
