.class public final synthetic Lkl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lkl/b$a;


# direct methods
.method public synthetic constructor <init>(Lkl/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl/a;->a:Lkl/b$a;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lkl/a;->a:Lkl/b$a;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {v0, p1, p2}, Lkl/b;->a(Lkl/b$a;Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
