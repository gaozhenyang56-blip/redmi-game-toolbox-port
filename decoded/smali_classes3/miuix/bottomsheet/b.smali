.class public final synthetic Lmiuix/bottomsheet/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpl/j$c;


# instance fields
.field public final synthetic a:Lmiuix/bottomsheet/BottomSheetBehavior;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/b;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lmiuix/bottomsheet/b;->b:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/bottomsheet/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/b;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/b;->b:Landroid/view/View;

    iget-boolean v2, p0, Lmiuix/bottomsheet/b;->c:Z

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->a(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
