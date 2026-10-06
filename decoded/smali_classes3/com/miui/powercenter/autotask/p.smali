.class public final synthetic Lcom/miui/powercenter/autotask/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/powercenter/autotask/q;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/powercenter/autotask/q;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/p;->a:Lcom/miui/powercenter/autotask/q;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/p;->a:Lcom/miui/powercenter/autotask/q;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/p;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/q;->c(Lcom/miui/powercenter/autotask/q;Ljava/util/List;)V

    return-void
.end method
