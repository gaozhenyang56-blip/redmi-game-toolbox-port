.class public final synthetic Ltc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/miui/permcenter/AppPermissionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/d;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    iput-object p2, p0, Ltc/d;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Ltc/d;->c:Ljava/lang/String;

    iput-object p4, p0, Ltc/d;->d:Lcom/miui/permcenter/AppPermissionInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Ltc/d;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    iget-object v1, p0, Ltc/d;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ltc/d;->c:Ljava/lang/String;

    iget-object v3, p0, Ltc/d;->d:Lcom/miui/permcenter/AppPermissionInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
