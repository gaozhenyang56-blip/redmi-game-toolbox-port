.class public final synthetic Lcom/miui/applicationlock/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/i;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput p2, p0, Lcom/miui/applicationlock/widget/i;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget v1, p0, Lcom/miui/applicationlock/widget/i;->b:I

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->b(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)V

    return-void
.end method
