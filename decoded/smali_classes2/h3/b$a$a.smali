.class Lh3/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3/b$a;->a(Landroid/view/View;Lh3/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh3/b;

.field final synthetic b:Lh3/b$a;


# direct methods
.method constructor <init>(Lh3/b$a;Lh3/b;)V
    .locals 0

    iput-object p1, p0, Lh3/b$a$a;->b:Lh3/b$a;

    iput-object p2, p0, Lh3/b$a$a;->a:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh3/b$a$a;->a:Lh3/b;

    invoke-virtual {v0, p1}, Lh3/b;->onClick(Landroid/view/View;)V

    return-void
.end method
