.class public final synthetic Ls8/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Lcom/miui/gamebooster/model/ActiveNewModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/r;->a:Ls8/u;

    iput-object p2, p0, Ls8/r;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object p3, p0, Ls8/r;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ls8/r;->a:Ls8/u;

    iget-object v1, p0, Ls8/r;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iget-object v2, p0, Ls8/r;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Ls8/u;->h(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
