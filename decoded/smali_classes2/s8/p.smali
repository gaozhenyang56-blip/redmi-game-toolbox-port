.class public final synthetic Ls8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Lcom/miui/gamebooster/model/ActiveNewModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/miui/dock/sidebar/j;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/p;->a:Ls8/u;

    iput-object p2, p0, Ls8/p;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object p3, p0, Ls8/p;->c:Ljava/lang/String;

    iput-object p4, p0, Ls8/p;->d:Lcom/miui/dock/sidebar/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ls8/p;->a:Ls8/u;

    iget-object v1, p0, Ls8/p;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iget-object v2, p0, Ls8/p;->c:Ljava/lang/String;

    iget-object v3, p0, Ls8/p;->d:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, v1, v2, v3}, Ls8/u;->g(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V

    return-void
.end method
