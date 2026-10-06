.class public final enum Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field public static final enum b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field public static final enum c:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field public static final enum d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field private static final synthetic e:[Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    new-instance v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const-string v3, "COLLAPSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    new-instance v3, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const-string v5, "HIDDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->c:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    new-instance v5, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const-string v7, "DRAGGING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->e:[Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;
    .locals 1

    const-class v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    return-object p0
.end method

.method public static values()[Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;
    .locals 1

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->e:[Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-virtual {v0}, [Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    return-object v0
.end method
