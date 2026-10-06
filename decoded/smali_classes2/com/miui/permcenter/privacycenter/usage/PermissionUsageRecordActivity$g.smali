.class final synthetic Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;
.implements Lbk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lak/l;


# direct methods
.method constructor <init>(Lak/l;)V
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;->a:Lak/l;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/lifecycle/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lbk/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;->getFunctionDelegate()Loj/d;

    move-result-object v0

    check-cast p1, Lbk/h;

    invoke-interface {p1}, Lbk/h;->getFunctionDelegate()Loj/d;

    move-result-object p1

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Loj/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Loj/d<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;->a:Lak/l;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;->getFunctionDelegate()Loj/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;->a:Lak/l;

    invoke-interface {v0, p1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
