.class public final synthetic Lcom/miui/autotask/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/activity/BaseSelectActivity$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/activity/BaseSelectActivity$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/activity/l;->a:Lcom/miui/autotask/activity/BaseSelectActivity$a;

    iput p2, p0, Lcom/miui/autotask/activity/l;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/l;->a:Lcom/miui/autotask/activity/BaseSelectActivity$a;

    iget v1, p0, Lcom/miui/autotask/activity/l;->b:I

    invoke-static {v0, v1}, Lcom/miui/autotask/activity/BaseSelectActivity$a;->b(Lcom/miui/autotask/activity/BaseSelectActivity$a;I)V

    return-void
.end method
