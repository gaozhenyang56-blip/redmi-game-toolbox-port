.class public final synthetic Lz2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lak/l;

.field public final synthetic b:Lz2/c$a;


# direct methods
.method public synthetic constructor <init>(Lak/l;Lz2/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/b;->a:Lak/l;

    iput-object p2, p0, Lz2/b;->b:Lz2/c$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lz2/b;->a:Lak/l;

    iget-object v1, p0, Lz2/b;->b:Lz2/c$a;

    invoke-static {v0, v1, p1}, Lz2/c$a;->a(Lak/l;Lz2/c$a;Landroid/view/View;)V

    return-void
.end method
