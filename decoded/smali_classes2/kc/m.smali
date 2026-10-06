.class public final synthetic Lkc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/UidImportanceListenerProxy$Callback;


# instance fields
.field public final synthetic a:Lkc/q;


# direct methods
.method public synthetic constructor <init>(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/m;->a:Lkc/q;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 1

    iget-object v0, p0, Lkc/m;->a:Lkc/q;

    invoke-static {v0, p1, p2}, Lkc/q;->b(Lkc/q;II)V

    return-void
.end method
