.class public Ld8/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld8/c$a;

.field public b:Ld8/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld8/c$a;

    invoke-direct {v0}, Ld8/c$a;-><init>()V

    iput-object v0, p0, Ld8/c$b;->a:Ld8/c$a;

    new-instance v0, Ld8/c$a;

    invoke-direct {v0}, Ld8/c$a;-><init>()V

    iput-object v0, p0, Ld8/c$b;->b:Ld8/c$a;

    return-void
.end method


# virtual methods
.method public a(Lh8/c;Lh8/c;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Ld8/c$b;->a:Ld8/c$a;

    invoke-virtual {v0, p1, p3}, Ld8/c$a;->a(Lh8/c;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ld8/c$b;->b:Ld8/c$a;

    invoke-virtual {p1, p2, p3}, Ld8/c$a;->a(Lh8/c;Landroid/view/View$OnClickListener;)V

    return-void
.end method
