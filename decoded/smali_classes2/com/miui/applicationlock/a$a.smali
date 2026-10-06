.class Lcom/miui/applicationlock/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/a;->q(Lcom/miui/applicationlock/a$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lc3/v;

.field final synthetic c:Lcom/miui/applicationlock/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/a;ILc3/v;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/a$a;->c:Lcom/miui/applicationlock/a;

    iput p2, p0, Lcom/miui/applicationlock/a$a;->a:I

    iput-object p3, p0, Lcom/miui/applicationlock/a$a;->b:Lc3/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/applicationlock/a$a;->c:Lcom/miui/applicationlock/a;

    invoke-static {p1}, Lcom/miui/applicationlock/a;->l(Lcom/miui/applicationlock/a;)Lcom/miui/applicationlock/a$f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/a$a;->c:Lcom/miui/applicationlock/a;

    invoke-static {p1}, Lcom/miui/applicationlock/a;->l(Lcom/miui/applicationlock/a;)Lcom/miui/applicationlock/a$f;

    move-result-object p1

    iget v0, p0, Lcom/miui/applicationlock/a$a;->a:I

    iget-object v1, p0, Lcom/miui/applicationlock/a$a;->b:Lc3/v;

    invoke-interface {p1, v0, v1}, Lcom/miui/applicationlock/a$f;->b(ILc3/v;)V

    :cond_0
    return-void
.end method
