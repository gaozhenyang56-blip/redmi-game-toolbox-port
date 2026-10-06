.class public final synthetic Ls8/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Lcom/miui/gamebooster/model/ActiveNewModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/o;->a:Ls8/u;

    iput-object p2, p0, Ls8/o;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object p3, p0, Ls8/o;->c:Ljava/lang/String;

    iput-object p4, p0, Ls8/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ls8/o;->a:Ls8/u;

    iget-object v1, p0, Ls8/o;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iget-object v2, p0, Ls8/o;->c:Ljava/lang/String;

    iget-object v3, p0, Ls8/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Ls8/u;->f(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
