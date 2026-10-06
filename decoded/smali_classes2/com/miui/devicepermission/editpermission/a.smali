.class public final synthetic Lcom/miui/devicepermission/editpermission/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lak/p;


# direct methods
.method public synthetic constructor <init>(Lak/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/a;->a:Lak/p;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/a;->a:Lak/p;

    invoke-static {v0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->d(Lak/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
