.class public final synthetic Ls8/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Lcom/miui/gamebooster/model/ActiveNewModel;

.field public final synthetic c:Lcom/miui/dock/sidebar/j;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/q;->a:Ls8/u;

    iput-object p2, p0, Ls8/q;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object p3, p0, Ls8/q;->c:Lcom/miui/dock/sidebar/j;

    iput-object p4, p0, Ls8/q;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ls8/q;->a:Ls8/u;

    iget-object v1, p0, Ls8/q;->b:Lcom/miui/gamebooster/model/ActiveNewModel;

    iget-object v2, p0, Ls8/q;->c:Lcom/miui/dock/sidebar/j;

    iget-object v3, p0, Ls8/q;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Ls8/u;->e(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
