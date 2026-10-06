.class public final enum Lcom/miui/antivirus/ui/MainHandleBar$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/MainHandleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/ui/MainHandleBar$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/ui/MainHandleBar$c;

.field public static final enum b:Lcom/miui/antivirus/ui/MainHandleBar$c;

.field public static final enum c:Lcom/miui/antivirus/ui/MainHandleBar$c;

.field private static final synthetic d:[Lcom/miui/antivirus/ui/MainHandleBar$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/antivirus/ui/MainHandleBar$c;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/ui/MainHandleBar$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->a:Lcom/miui/antivirus/ui/MainHandleBar$c;

    new-instance v1, Lcom/miui/antivirus/ui/MainHandleBar$c;

    const-string v3, "RISKY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/ui/MainHandleBar$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    new-instance v3, Lcom/miui/antivirus/ui/MainHandleBar$c;

    const-string v5, "OMITTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/antivirus/ui/MainHandleBar$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/antivirus/ui/MainHandleBar$c;->c:Lcom/miui/antivirus/ui/MainHandleBar$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/antivirus/ui/MainHandleBar$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/antivirus/ui/MainHandleBar$c;->d:[Lcom/miui/antivirus/ui/MainHandleBar$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/ui/MainHandleBar$c;
    .locals 1

    const-class v0, Lcom/miui/antivirus/ui/MainHandleBar$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/ui/MainHandleBar$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/ui/MainHandleBar$c;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->d:[Lcom/miui/antivirus/ui/MainHandleBar$c;

    invoke-virtual {v0}, [Lcom/miui/antivirus/ui/MainHandleBar$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/ui/MainHandleBar$c;

    return-object v0
.end method
