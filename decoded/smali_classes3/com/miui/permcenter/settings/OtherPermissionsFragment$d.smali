.class final Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/settings/OtherPermissionsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lcom/miui/permcenter/permissions/c;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/permcenter/permissions/c;)V
    .locals 1
    .param p1    # Lcom/miui/permcenter/permissions/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->g0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/permcenter/permissions/c;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;->a(Lcom/miui/permcenter/permissions/c;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
