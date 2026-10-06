.class final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Lz4/a;",
        "Lz4/a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;

    invoke-direct {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;-><init>()V

    sput-object v0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lz4/a;Lz4/a;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lz4/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lz4/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz4/a;

    check-cast p2, Lz4/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;->a(Lz4/a;Lz4/a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
