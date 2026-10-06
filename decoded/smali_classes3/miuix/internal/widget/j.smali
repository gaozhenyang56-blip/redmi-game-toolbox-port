.class public final synthetic Lmiuix/internal/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lmiuix/internal/widget/l;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/j;->a:Lmiuix/internal/widget/l;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/j;->a:Lmiuix/internal/widget/l;

    invoke-virtual {v0}, Lmiuix/internal/widget/l;->onDismiss()V

    return-void
.end method
