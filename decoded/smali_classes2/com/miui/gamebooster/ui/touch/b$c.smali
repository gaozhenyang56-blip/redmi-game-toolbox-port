.class public Lcom/miui/gamebooster/ui/touch/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/touch/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/ui/touch/b;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I

.field private e:Lcom/miui/gamebooster/ui/touch/b$d;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/touch/b;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/b$c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/ui/touch/b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/b$c;->a:Lcom/miui/gamebooster/ui/touch/b;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/touch/b;->b(Lcom/miui/gamebooster/ui/touch/b;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b$c;->a:Lcom/miui/gamebooster/ui/touch/b;

    iget v1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->d:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/touch/b;->c(Lcom/miui/gamebooster/ui/touch/b;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b$c;->a:Lcom/miui/gamebooster/ui/touch/b;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->e:Lcom/miui/gamebooster/ui/touch/b$d;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/touch/b;->d(Lcom/miui/gamebooster/ui/touch/b;Lcom/miui/gamebooster/ui/touch/b$d;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b$c;->a:Lcom/miui/gamebooster/ui/touch/b;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/touch/b;->e(Lcom/miui/gamebooster/ui/touch/b;)V

    return-void
.end method

.method public b(I)Lcom/miui/gamebooster/ui/touch/b$c;
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->d:I

    return-object p0
.end method

.method public c(Landroid/view/View;)Lcom/miui/gamebooster/ui/touch/b$c;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->c:Landroid/view/View;

    return-object p0
.end method

.method public d(Landroid/view/View;Ljava/lang/String;)Lcom/miui/gamebooster/ui/touch/b$c;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/b$c;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/b$c;->f:Ljava/lang/String;

    return-object p0
.end method
