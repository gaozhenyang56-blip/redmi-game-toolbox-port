.class public final synthetic Lm3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/apppredict/bean/ICallBack;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/apppredict/bean/ICallBack;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/a;->a:Lcom/miui/apppredict/bean/ICallBack;

    iput-object p2, p0, Lm3/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lm3/a;->a:Lcom/miui/apppredict/bean/ICallBack;

    iget-object v1, p0, Lm3/a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lm3/b;->c(Lcom/miui/apppredict/bean/ICallBack;Ljava/util/List;)V

    return-void
.end method
