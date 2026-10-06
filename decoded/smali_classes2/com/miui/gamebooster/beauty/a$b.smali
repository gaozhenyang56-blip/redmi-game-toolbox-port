.class Lcom/miui/gamebooster/beauty/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/beauty/a;->o(Lb6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb6/c;

.field final synthetic b:Lcom/miui/gamebooster/beauty/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/a;Lb6/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/a$b;->b:Lcom/miui/gamebooster/beauty/a;

    iput-object p2, p0, Lcom/miui/gamebooster/beauty/a$b;->a:Lb6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$b;->b:Lcom/miui/gamebooster/beauty/a;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/a;->e(Lcom/miui/gamebooster/beauty/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/beauty/a;->d(Lcom/miui/gamebooster/beauty/a;Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$b;->a:Lb6/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb6/c;->a(Z)V

    :cond_0
    return-void
.end method
