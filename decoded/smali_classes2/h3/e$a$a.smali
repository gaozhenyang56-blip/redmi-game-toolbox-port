.class Lh3/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3/e$a;->a(Landroid/view/View;Lh3/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh3/e;

.field final synthetic b:Lh3/e$a;


# direct methods
.method constructor <init>(Lh3/e$a;Lh3/e;)V
    .locals 0

    iput-object p1, p0, Lh3/e$a$a;->b:Lh3/e$a;

    iput-object p2, p0, Lh3/e$a$a;->a:Lh3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh3/e$a$a;->a:Lh3/e;

    invoke-virtual {v0, p1}, Lh3/e;->onClick(Landroid/view/View;)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1}, Lgb/b;->k()V

    return-void
.end method
