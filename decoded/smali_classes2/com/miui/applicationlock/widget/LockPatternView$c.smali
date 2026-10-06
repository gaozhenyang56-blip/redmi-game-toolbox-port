.class public final enum Lcom/miui/applicationlock/widget/LockPatternView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/applicationlock/widget/LockPatternView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/applicationlock/widget/LockPatternView$c;

.field public static final enum b:Lcom/miui/applicationlock/widget/LockPatternView$c;

.field public static final enum c:Lcom/miui/applicationlock/widget/LockPatternView$c;

.field private static final synthetic d:[Lcom/miui/applicationlock/widget/LockPatternView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/applicationlock/widget/LockPatternView$c;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    new-instance v1, Lcom/miui/applicationlock/widget/LockPatternView$c;

    const-string v3, "Animate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/applicationlock/widget/LockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/applicationlock/widget/LockPatternView$c;->b:Lcom/miui/applicationlock/widget/LockPatternView$c;

    new-instance v3, Lcom/miui/applicationlock/widget/LockPatternView$c;

    const-string v5, "Wrong"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/applicationlock/widget/LockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/applicationlock/widget/LockPatternView$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/applicationlock/widget/LockPatternView$c;->d:[Lcom/miui/applicationlock/widget/LockPatternView$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/widget/LockPatternView$c;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/applicationlock/widget/LockPatternView$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/applicationlock/widget/LockPatternView$c;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->d:[Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {v0}, [Lcom/miui/applicationlock/widget/LockPatternView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/applicationlock/widget/LockPatternView$c;

    return-object v0
.end method
