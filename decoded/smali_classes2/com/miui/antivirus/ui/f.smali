.class public final enum Lcom/miui/antivirus/ui/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/ui/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/ui/f;

.field public static final enum b:Lcom/miui/antivirus/ui/f;

.field public static final enum c:Lcom/miui/antivirus/ui/f;

.field private static final synthetic d:[Lcom/miui/antivirus/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/antivirus/ui/f;

    const-string v1, "UNCHECKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/f;->a:Lcom/miui/antivirus/ui/f;

    new-instance v1, Lcom/miui/antivirus/ui/f;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/ui/f;->b:Lcom/miui/antivirus/ui/f;

    new-instance v3, Lcom/miui/antivirus/ui/f;

    const-string v5, "CHECKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/antivirus/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/antivirus/ui/f;->c:Lcom/miui/antivirus/ui/f;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/antivirus/ui/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/antivirus/ui/f;->d:[Lcom/miui/antivirus/ui/f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/ui/f;
    .locals 1

    const-class v0, Lcom/miui/antivirus/ui/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/ui/f;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/ui/f;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/f;->d:[Lcom/miui/antivirus/ui/f;

    invoke-virtual {v0}, [Lcom/miui/antivirus/ui/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/ui/f;

    return-object v0
.end method
