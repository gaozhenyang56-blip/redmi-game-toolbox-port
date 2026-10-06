.class Lcom/miui/optimizecenter/storage/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/b$a;-><init>(Landroid/view/View;Lcom/miui/optimizecenter/storage/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/b$b;

.field final synthetic b:Lcom/miui/optimizecenter/storage/b$a;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/b$a;Lcom/miui/optimizecenter/storage/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/b$a$a;->b:Lcom/miui/optimizecenter/storage/b$a;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/b$a$a;->a:Lcom/miui/optimizecenter/storage/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/b$a$a;->b:Lcom/miui/optimizecenter/storage/b$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b$a$a;->a:Lcom/miui/optimizecenter/storage/b$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/miui/optimizecenter/storage/b$b;->a(II)V

    :cond_0
    return-void
.end method
