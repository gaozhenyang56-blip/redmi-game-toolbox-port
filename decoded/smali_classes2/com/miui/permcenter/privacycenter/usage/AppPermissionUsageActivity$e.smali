.class final synthetic Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$e;
.super Lbk/k;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/k;",
        "Lak/l<",
        "Lcc/g;",
        "Loj/t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    const/4 v1, 0x1

    const-string v4, "onAppPermissionChange"

    const-string v5, "onAppPermissionChange(Lcom/miui/permcenter/permissions/PackagePermissionUpdateEvent;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lbk/k;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Lcc/g;)V
    .locals 1
    .param p1    # Lcc/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lbk/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0, p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->t0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcc/g;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcc/g;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$e;->i(Lcc/g;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
