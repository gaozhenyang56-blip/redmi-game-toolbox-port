.class final enum Lcom/miui/antivirus/ui/AnimationView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/AnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/ui/AnimationView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/ui/AnimationView$b;

.field public static final enum b:Lcom/miui/antivirus/ui/AnimationView$b;

.field private static final synthetic c:[Lcom/miui/antivirus/ui/AnimationView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/antivirus/ui/AnimationView$b;

    const-string v1, "TO_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/ui/AnimationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/AnimationView$b;->a:Lcom/miui/antivirus/ui/AnimationView$b;

    new-instance v1, Lcom/miui/antivirus/ui/AnimationView$b;

    const-string v3, "TO_BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/ui/AnimationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/ui/AnimationView$b;->b:Lcom/miui/antivirus/ui/AnimationView$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/antivirus/ui/AnimationView$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/antivirus/ui/AnimationView$b;->c:[Lcom/miui/antivirus/ui/AnimationView$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/ui/AnimationView$b;
    .locals 1

    const-class v0, Lcom/miui/antivirus/ui/AnimationView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/ui/AnimationView$b;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/ui/AnimationView$b;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/AnimationView$b;->c:[Lcom/miui/antivirus/ui/AnimationView$b;

    invoke-virtual {v0}, [Lcom/miui/antivirus/ui/AnimationView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/ui/AnimationView$b;

    return-object v0
.end method
