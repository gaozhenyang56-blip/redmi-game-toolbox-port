.class Lqf/c$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/c;->x(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lqf/c$o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lqf/c$o;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "exit_dialog_garbage_clean_scanresult_show"

    goto :goto_0

    :pswitch_1
    const-string v0, "exit_dialog_garbage_clean_scanresult_cancel"

    goto :goto_0

    :pswitch_2
    const-string v0, "exit_dialog_garbage_clean_scanresult_ok"

    goto :goto_0

    :pswitch_3
    const-string v0, "exit_dialog_release_storage_show"

    goto :goto_0

    :pswitch_4
    const-string v0, "exit_dialog_release_storage_cancel"

    goto :goto_0

    :pswitch_5
    const-string v0, "exit_dialog_release_storage"

    goto :goto_0

    :pswitch_6
    const-string v0, "exit_dialog_scan_optimize_show"

    goto :goto_0

    :pswitch_7
    const-string v0, "exit_dialog_scan_optimize_cancel"

    goto :goto_0

    :pswitch_8
    const-string v0, "exit_dialog_scan_optimize"

    goto :goto_0

    :pswitch_9
    const-string v0, "exit_dialog_garbage_clean_show"

    goto :goto_0

    :pswitch_a
    const-string v0, "exit_dialog_garbage_clean_cancel"

    goto :goto_0

    :pswitch_b
    const-string v0, "exit_dialog_garbage_clean"

    :goto_0
    invoke-static {v0}, Lqf/c;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
