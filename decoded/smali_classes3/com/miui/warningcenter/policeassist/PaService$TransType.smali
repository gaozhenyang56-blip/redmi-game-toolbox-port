.class final enum Lcom/miui/warningcenter/policeassist/PaService$TransType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/policeassist/PaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/warningcenter/policeassist/PaService$TransType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/warningcenter/policeassist/PaService$TransType;

.field public static final enum NETWORK:Lcom/miui/warningcenter/policeassist/PaService$TransType;

.field public static final enum SMS:Lcom/miui/warningcenter/policeassist/PaService$TransType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$TransType;

    const-string v1, "SMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/warningcenter/policeassist/PaService$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/warningcenter/policeassist/PaService$TransType;->SMS:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    new-instance v1, Lcom/miui/warningcenter/policeassist/PaService$TransType;

    const-string v3, "NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/warningcenter/policeassist/PaService$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/warningcenter/policeassist/PaService$TransType;->NETWORK:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/warningcenter/policeassist/PaService$TransType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/warningcenter/policeassist/PaService$TransType;->$VALUES:[Lcom/miui/warningcenter/policeassist/PaService$TransType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/warningcenter/policeassist/PaService$TransType;
    .locals 1

    const-class v0, Lcom/miui/warningcenter/policeassist/PaService$TransType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/warningcenter/policeassist/PaService$TransType;

    return-object p0
.end method

.method public static values()[Lcom/miui/warningcenter/policeassist/PaService$TransType;
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaService$TransType;->$VALUES:[Lcom/miui/warningcenter/policeassist/PaService$TransType;

    invoke-virtual {v0}, [Lcom/miui/warningcenter/policeassist/PaService$TransType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/warningcenter/policeassist/PaService$TransType;

    return-object v0
.end method
