.class public final synthetic Lra/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/h0;->a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lra/h0;->a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->c0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/lang/Boolean;)V

    return-void
.end method
