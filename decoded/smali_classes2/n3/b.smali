.class public final synthetic Ln3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/apppredict/fragment/a;

.field public final synthetic b:Ln3/a;

.field public final synthetic c:Lcom/miui/apppredict/fragment/a$b;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/b;->a:Lcom/miui/apppredict/fragment/a;

    iput-object p2, p0, Ln3/b;->b:Ln3/a;

    iput-object p3, p0, Ln3/b;->c:Lcom/miui/apppredict/fragment/a$b;

    iput p4, p0, Ln3/b;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ln3/b;->a:Lcom/miui/apppredict/fragment/a;

    iget-object v1, p0, Ln3/b;->b:Ln3/a;

    iget-object v2, p0, Ln3/b;->c:Lcom/miui/apppredict/fragment/a$b;

    iget v3, p0, Ln3/b;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/apppredict/fragment/a;->k(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V

    return-void
.end method
