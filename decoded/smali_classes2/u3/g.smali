.class public final synthetic Lu3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lu3/h;

.field public final synthetic b:Lcom/miui/autotask/bean/s;


# direct methods
.method public synthetic constructor <init>(Lu3/h;Lcom/miui/autotask/bean/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/g;->a:Lu3/h;

    iput-object p2, p0, Lu3/g;->b:Lcom/miui/autotask/bean/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu3/g;->a:Lu3/h;

    iget-object v1, p0, Lu3/g;->b:Lcom/miui/autotask/bean/s;

    invoke-static {v0, v1}, Lu3/h;->a(Lu3/h;Lcom/miui/autotask/bean/s;)V

    return-void
.end method
