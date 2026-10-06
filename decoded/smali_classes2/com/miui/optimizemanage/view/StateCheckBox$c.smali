.class public final enum Lcom/miui/optimizemanage/view/StateCheckBox$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/view/StateCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/optimizemanage/view/StateCheckBox$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

.field public static final enum b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

.field public static final enum c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

.field private static final synthetic d:[Lcom/miui/optimizemanage/view/StateCheckBox$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;

    const-string v1, "UNCHECKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/optimizemanage/view/StateCheckBox$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    new-instance v1, Lcom/miui/optimizemanage/view/StateCheckBox$c;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/optimizemanage/view/StateCheckBox$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/optimizemanage/view/StateCheckBox$c;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    new-instance v3, Lcom/miui/optimizemanage/view/StateCheckBox$c;

    const-string v5, "CHECKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/optimizemanage/view/StateCheckBox$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/optimizemanage/view/StateCheckBox$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/optimizemanage/view/StateCheckBox$c;->d:[Lcom/miui/optimizemanage/view/StateCheckBox$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/optimizemanage/view/StateCheckBox$c;
    .locals 1

    const-class v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/optimizemanage/view/StateCheckBox$c;
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->d:[Lcom/miui/optimizemanage/view/StateCheckBox$c;

    invoke-virtual {v0}, [Lcom/miui/optimizemanage/view/StateCheckBox$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object v0
.end method
